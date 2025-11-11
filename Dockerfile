#base image hướng dẫn đóng gói với phiên bản ở dưới   để build
FROM node:20-alpine

#set worrking directory 
WORKDIR /app

#  tận dụng lại các thư viện để buil lại đồ án được nhanh hơn và các chức năng của filee được tối dẫn không
COPY package*.json ./

RUN npm install

#  câu lệnh copy để thực hiện các copy các file để dáng dô file âpp trong container 
COPY . .

#  chữ run này là thực hiện build dự án ở container chứ không phải ở trên dự án ở dưới local
RUN npm run build

# cài cho nó có port 3000 để thục hiện các port nhỏ trong container và có thể chạy chạy ở port 3000
EXPOSE 3000

CMD ["npm", "start"]
